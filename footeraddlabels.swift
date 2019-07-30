func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: mytableView.frame.width, height: 50))
        
        let nmLbl = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        
        nmLbl.text  = "Total"
        nmLbl.textAlignment = .left
        
        footerView.addSubview(nmLbl)
        
        let priceLbl = UILabel(frame: CGRect(x: 0, y: 0, width: 400, height: 50))
        priceLbl.textAlignment = .right

        if self.section[section] == "Fruits"{
            sumOfTotal(fprice)
            priceLbl.text = grossTotal

        }else{
            sumOfTotal(vprice)
            priceLbl.text = grossTotal
        }

        footerView.addSubview(priceLbl)
        
        
        
        return footerView
    }
